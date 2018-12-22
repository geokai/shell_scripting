// simple_options.c
// a simple script to show the use of the getopt function - using cmd options
// programme options: -u -g


#include <stdio.h>
#include <getopt.h>

int main(int argc, char **argv) {
    int option_index = 0;
    char *user_name = NULL;

    while (( option_index = getopt(argc, argv, "gu:" )) != -1) {
        switch (option_index) {
            case 'u':
                user_name = optarg;
                printf("The user is %s\n", user_name);
                break;
            case 'g':
                printf("Group is selected\n");
                break;
            default:
                printf("Invalid option\n");
                return 1;
        }
    }
    return 0;
}
