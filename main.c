#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

// #define BE_LE_U16(u16) (u16 & 0xff00) >> 8 | (u16 & 0x00ff) << 8
// #define BE_LE_U32(u32) (u32 >> 24) | (u32 << 24) | ((u32 & 0x00FF0000) >> 8) | ((u32 & 0x0000FF00) << 8)
#define MIN(int1, int2) (int1 < int2 ? int1 : int2)

const uint64_t bloc_size = 0x00000010;
const uint16_t audio_format = 0x0001;

const char default_out_name[] = "out.wav";
const float default_duration = 3;
const char w[] = "RIFF\0WAVEfmt \0";

FILE *io;

uint64_t max_freq(int freq_count, double freq_vector[]);
void write_header(int freq_count, double *freq_vector, float duration, int frequence);
void usage();
void check_args(int argc, char *argv[], int *option_pos);
void write_data(int freq_count, double *freq_vector, float duration, int frequence);

int main(int argc, char *argv[])
{
    int pos_vector[4] = {0, 0, 0, 0};
    check_args(argc, argv, pos_vector);
    if (pos_vector[1])
    {
        io = fopen(argv[pos_vector[1]], "wb");
    }
    else
    {
        io = fopen(default_out_name, "wb");
    }
    if (!io)
    {
        printf("Error opening file %s", default_out_name);
    }

    uint16_t freq_count = pos_vector[3] - pos_vector[2];
    double freqv[freq_count];

    float duration = atof(argv[pos_vector[0]]) ? atof(argv[pos_vector[0]]) : default_duration;

    for (int i = pos_vector[2]; i < pos_vector[3]; i++)
    {
        freqv[i - pos_vector[2]] = atof(argv[i]);
    }

    int frequence = max_freq(freq_count, freqv) * 10; // ~~ * n > 2 at least in order to comply with shannon criteria. Using a greater integer improves overall sound quality.
    write_header(freq_count, freqv, duration, frequence);
    write_data(freq_count, freqv, duration, frequence);
}

void write_header(int freq_count, double *freq_vector, float duration, int frequence)
{

    uint16_t nbr_canaux = 1; // mono = 1, stereo = 2, gauche droit centre = 3
    uint16_t bits_per_sample = 16;
    // uint64_t frequence = max_freq(freq_count, freq_vector) * 10; // ~~ * n > 2 at least in order to comply with shannon criteria. Using a greater integer improves overall sound quality.
    uint16_t bytes_per_bloc = nbr_canaux * bits_per_sample / 8;
    uint64_t bytes_per_sec = frequence * nbr_canaux;
    uint32_t file_size = frequence * 2 * duration; // 2 octets per sample.
    uint64_t data_size = file_size - 44;           // taille_du_fichier - taille_de_l'entête  (qui fait 44 octets normalement)

    fprintf(io, w);
    fwrite(&file_size, 1, 4, io);
    fprintf(io, w + strlen(w) + 1);
    fwrite(&bloc_size, 1, 4, io);
    fwrite(&audio_format, 1, 2, io);
    fwrite(&nbr_canaux, 1, 2, io);
    fwrite(&frequence, 1, 4, io);
    fwrite(&bytes_per_sec, 1, 4, io);
    fwrite(&bytes_per_bloc, 1, 2, io);
    fwrite(&bits_per_sample, 1, 2, io);

    fprintf(io, "data");
    fwrite(&data_size, 1, 4, io);
}

void write_data(int freq_count, double *freq_vector, float duration, int frequence)
{

    int16_t tmp_word; // temporary word to be written onto the file

    for (uint64_t i = 0; i < frequence * duration; i++)
    {
        tmp_word = 0;
        for (int j = 0; j < freq_count; j++)
        {
            tmp_word += (32767 / freq_count * cosf(freq_vector[j] * 2 * M_PI * i / frequence));
        }
        fwrite(&tmp_word, 1, 2, io);
    }
}

void usage()
{
    printf("\nusage:");
    printf("\n	hrmncs --help : this message");
    printf("\n	hrmncs -f freq [freq2 ...] [-t duration]  [-o output_file]  ");
    printf("\n	Generates an audio file of duration seconds, with all frequencies as harmonics (in Hz),");
    printf("\n	into the specified output_file.");
    exit(0);
}

void check_args(int argc, char *argv[], int *option_pos)
{

    // int option_pos[4]; // positions of time duration in seconds (float), output name, the first frequency, and how many there is
    //  int nb_freqs;      // total of harmonics of the output signal
    //  float_t duration;  // length of the signal in seconds

    int i = 1;
    char *endPtr;
    if (argc < 2)
    {
        usage();
    }

    while (i < argc)
    {
        if (!strcmp(argv[i], "-t"))
        {
            option_pos[0] = ++i;
            strtol(argv[i], &endPtr, 10);
            if (endPtr == argv[i]){
                printf("Bad duration input, expected a float (ex: 2.7).");
                usage();
            }
            ++i;
        }

        else if (!strcmp(argv[i], "-o"))
        {
            option_pos[1] = ++i;
            
            ++i;
        }
        else if (!strcmp(argv[i], "-f"))
        {

            option_pos[2] = ++i;
            while ((i < argc) && (strcmp(argv[i], "-t")) & (strcmp(argv[i], "-o")))
            {
            strtol(argv[i], &endPtr, 10);
            if (endPtr == argv[i]){
                printf("Bad frequency input, expected an integer.");
                usage();
            }
                i++;
                
            }

            option_pos[3] = i;
        }
        else
        {
            usage();
        }
    }
}

uint64_t max_freq(int freq_count, double *freq_vector)
{
    double max = freq_vector[0];
    for (int c = 1; c < freq_count; c++)
    {
        max = max > freq_vector[c] ? max : freq_vector[c];
    }
    return max;
}