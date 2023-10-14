################################################################################
# MRS Version: 1.9.0
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Universe/Desktop/Seekfree_CH32V307VCT6_Opensource_Library/project/code/My_Math.c \
C:/Users/Universe/Desktop/Seekfree_CH32V307VCT6_Opensource_Library/project/code/cam_preprocess.c \
C:/Users/Universe/Desktop/Seekfree_CH32V307VCT6_Opensource_Library/project/code/motor.c \
C:/Users/Universe/Desktop/Seekfree_CH32V307VCT6_Opensource_Library/project/code/pid.c \
C:/Users/Universe/Desktop/Seekfree_CH32V307VCT6_Opensource_Library/project/code/seedline.c 

OBJS += \
./code/My_Math.o \
./code/cam_preprocess.o \
./code/motor.o \
./code/pid.o \
./code/seedline.o 

C_DEPS += \
./code/My_Math.d \
./code/cam_preprocess.d \
./code/motor.d \
./code/pid.d \
./code/seedline.d 


# Each subdirectory must supply rules for building sources it contributes
code/My_Math.o: C:/Users/Universe/Desktop/Seekfree_CH32V307VCT6_Opensource_Library/project/code/My_Math.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\Libraries\doc" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Core" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Ld" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Peripheral" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Startup" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\project\user\inc" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_common" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_device" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\project\code" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\project\code" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/cam_preprocess.o: C:/Users/Universe/Desktop/Seekfree_CH32V307VCT6_Opensource_Library/project/code/cam_preprocess.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\Libraries\doc" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Core" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Ld" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Peripheral" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Startup" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\project\user\inc" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_common" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_device" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\project\code" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\project\code" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/motor.o: C:/Users/Universe/Desktop/Seekfree_CH32V307VCT6_Opensource_Library/project/code/motor.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\Libraries\doc" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Core" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Ld" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Peripheral" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Startup" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\project\user\inc" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_common" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_device" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\project\code" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\project\code" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/pid.o: C:/Users/Universe/Desktop/Seekfree_CH32V307VCT6_Opensource_Library/project/code/pid.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\Libraries\doc" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Core" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Ld" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Peripheral" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Startup" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\project\user\inc" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_common" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_device" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\project\code" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\project\code" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
code/seedline.o: C:/Users/Universe/Desktop/Seekfree_CH32V307VCT6_Opensource_Library/project/code/seedline.c
	@	@	riscv-none-embed-gcc -march=rv32imafc -mabi=ilp32f -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -pedantic -Wunused -Wuninitialized -Wall  -g -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\Libraries\doc" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Core" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Ld" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Peripheral" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\sdk\Startup" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\project\user\inc" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_common" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_device" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\project\code" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\project\code" -I"C:\Users\Universe\Desktop\Seekfree_CH32V307VCT6_Opensource_Library\libraries\zf_driver" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

