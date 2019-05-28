/**
 * @file   kernel.c
 *
 * @brief  entry point to the raspberry pi kernel
 *
 * @date   10/4/17
 * @author David Yu <davidyu@andrew.cmu.edu>
 */

#include <uart.h>
#include <kstdint.h>
#include <printk.h>
#include <i2c.h>
#include <ads1015.h>

/** @brief The threshold value for sound to register */
#define AUDIO_THRESHOLD 1000

/** @brief The number of samples per audio grab */
#define AUDIO_SAMPLE 200


/**
 * @brief The kernel entry point
 */
void kernel_main(void) {

    uart_init();
    adc_init();
    
    while (1){
        printk("Enter a sensor to sample:\n");
        uint8_t channel = uart_get_byte();
        if(channel == '0') { 
            uint16_t light_val = adc_read(0);
            printk("Light: %d\n",light_val);
        }
        else if (channel == '1') { 
            uint16_t sound_val = 0;
            while (sound_val < AUDIO_THRESHOLD) {
                uint16_t min = AUDIO_THRESHOLD;
                uint16_t max = 0;
                int i;
                for(i = 0; i < AUDIO_SAMPLE; i++) {
                    uint16_t val = adc_read(1);
                    if(min > val) {
                        min = val;
                    }
                    else if(max < val) {
                        max = val;
                    }
                }
                sound_val = max-min;
                printk("Audio: %d\n",sound_val);
            }
            printk("Clap detected!\n"); 
        }
    }

}
