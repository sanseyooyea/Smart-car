################################################################################
# MRS Version: 1.9.0
# �Զ����ɵ��ļ�����Ҫ�༭��
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Universe/Desktop/Seekfree_CH32V307VCT6_Opensource_Library/libraries/sdk/Core/core_riscv.c 

OBJS += \
./sdk/Core/core_riscv.o 

C_DEPS += \
./sdk/Core/core_riscv.d 


# Each subdirectory must supply rules for building sources it contributes
sdk/Core/core_riscv.o: C:/Users/Universe/Desktop/Seekfree_CH32V307VCT6_Opensource_Library/libraries/sdk/Core/core_riscv.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\Libraries\doc" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Core" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Ld" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Peripheral" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Startup" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\project\user\inc" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_common" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_device" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\project\code" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\project\code" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

