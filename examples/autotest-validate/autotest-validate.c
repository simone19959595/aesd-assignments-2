/**
* A simple file to validate your automated test setup for AESD
*/

#include "autotest-validate.h"
#include <stdbool.h>

/**
* @return true (as you may have guessed from the name)
*/
bool this_function_returns_true()
{
    return true;
}

/**
* @return false (as you may have guessed from the name)
*/
bool this_function_returns_false()
{
    return false;
}

/**
 * @return a string which contains the username you use for
 * git submissions.  This string should match the string in conf/username.txt
 */
const char *my_username()
{
    char buffer[1000];
    int i=5;
    int c=0;
    FILE *ftpr = fopen("/home/mysterious/aesd-assignments/conf/username.txt","r"); // Create pointer towards the file
    while ((c=fgetc(ftpr))!=EOF){         // Make a system that analyses the file character by character
        fscanf(ftpr, "%s", &buffer[i]);   // Save in the array buffer the content of the file, character by character
        printf("\n%s\n", &buffer[i]);
        i++;
    }
    return 0;
}
