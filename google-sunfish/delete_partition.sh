#!/bin/sh


fastboot delete-logical-partition system_ext_a
fastboot delete-logical-partition system_ext_b
fastboot delete-logical-partition product_a
fastboot delete-logical-partition product_b
fastboot delete-logical-partition system_b
fastboot delete-logical-partition vendor_b
fastboot delete-logical-partition odm_b
