/**
 * @file   tic_toc.c
 *
 * @brief  Implementation of tic-toc routines for interacting with ARM timer
 *
 * @date   10/2/17
 * @author David Yu <davidyu@andrew.cmu.edu>
 */

#include <tic_toc.h>
#include <BCM2836.h>


/** @brief Timer reg LOAD physical address */
#define LOAD (volatile uint32_t *) (MMIO_BASE_PHYSICAL + 0xB400)

/** @brief Timer reg VALUE physical address */
#define VALUE (volatile uint32_t *) (MMIO_BASE_PHYSICAL + 0xB404)

/** @brief Timer reg CONTROL physical address */
#define CONTROL (volatile uint32_t *) (MMIO_BASE_PHYSICAL + 0xB408)

void tic(void) {
    *LOAD = 0xFFFFFFFF;
    *CONTROL = 0x82;
    return;
}

uint32_t toc(void) {
  return (0xFFFFFFFF-(*VALUE))/1000;
}
