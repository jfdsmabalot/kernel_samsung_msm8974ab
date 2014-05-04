The Arkenstone Kernel for the Samsung Galaxy S5 G900F
=================================================
Below are the instructions on how to build the Stock Kernel. If you want to build mine. Do this:

1. Edit the arkenstone-build.sh file first, by editing, edit the toolchain path to yours.
2. Run the commands below:

$ chmod 0755 arkenstone-build.sh && ./arkenstone-build.sh

3. Repack the zImage-dtb file use mkbootimg, or use anykernel.zip format. 
   (For Anykernel format, make sure to use zImage, or if you know how to edit the scripts, use the zImage-dtb)
4. Flash it and you're done

################################################################################
################################################################################
Samsung Default Setup
=================================================
1. How to Build
	- get Toolchain
		From android git server , codesourcery and etc ..
		 - arm-eabi-4.6
		
	- edit Makefile
		edit "CROSS_COMPILE" to right toolchain path(You downloaded).
		  EX)  export CROSS_COMPILE= $(android platform directory you download)/android/gcc/prebuilts/linux-x86/arm/arm-eabi-4.6/bin/arm-eabi-
       		  Ex)  export CROSS_COMPILE=/usr/local/toolchain/arm-eabi-4.6/bin/arm-eabi-          // check the location of toolchain

		$ export ARCH=arm
		$ make msm8974_sec_defconfig VARIANT_DEFCONFIG=msm8974pro_sec_klte_eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig
		$ make
		
2. Output filesS
	- Kernel : output/arch/arm/boot/zImage
	- module : output/drivers/*/*.ko

3. How to Clean	
		$ make clean
