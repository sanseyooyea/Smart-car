/*********************************************************************************************************************
* CH32V307VCT6 Opensourec Library ����CH32V307VCT6 ��Դ�⣩��һ�����ڹٷ� SDK �ӿڵĵ�������Դ��
* Copyright (c) 2022 SEEKFREE ��ɿƼ�
*
* ���ļ���CH32V307VCT6 ��Դ���һ����
*
* CH32V307VCT6 ��Դ�� ���������
* �����Ը���������������ᷢ���� GPL��GNU General Public License���� GNUͨ�ù�������֤��������
* �� GPL �ĵ�3�棨�� GPL3.0������ѡ��ģ��κκ����İ汾�����·�����/���޸���
*
* ����Դ��ķ�����ϣ�����ܷ������ã�����δ�������κεı�֤
* ����û�������������Ի��ʺ��ض���;�ı�֤
* ����ϸ����μ� GPL
*
* ��Ӧ�����յ�����Դ���ͬʱ�յ�һ�� GPL �ĸ���
* ���û�У������<https://www.gnu.org/licenses/>
*
* ����ע����
* ����Դ��ʹ�� GPL3.0 ��Դ����֤Э�� ������������Ϊ���İ汾
* ��������Ӣ�İ��� libraries/doc �ļ����µ� GPL3_permission_statement.txt �ļ���
* ����֤������ libraries �ļ����� �����ļ����µ� LICENSE �ļ�
* ��ӭ��λʹ�ò����������� ���޸�����ʱ���뱣����ɿƼ��İ�Ȩ����������������
*
* �ļ�����          main
* ��˾����          �ɶ���ɿƼ����޹�˾
* �汾��Ϣ          �鿴 libraries/doc �ļ����� version �ļ� �汾˵��
* ��������          MounRiver Studio V1.8.1
* ����ƽ̨          CH32V307VCT6
* ��������          https://seekfree.taobao.com/
*
* �޸ļ�¼
* ����                                      ����                             ��ע
* 2022-09-15        ��W            first version
********************************************************************************************************************/
#include "zf_common_headfile.h"
#include "Ourcode_headfile.h"

extern int cnttt;
extern uint8 stoppp;
uint8 image[60][60];
uint8 startflag;
double k;

void Init(void) {
    tft180_set_dir(TFT180_CROSSWISE_180);
    tft180_init();     //��ʼ����Ļ

    mt9v03x_init();

    JumpInit();

}

int main(void) {
    clock_init(SYSTEM_CLOCK_120M);      // ��ʼ��оƬʱ�� ����Ƶ��Ϊ 120MHz

    // �˴���д�û����� ���������ʼ�������
    Init();
    Motor_Init();
    // exti_init(B10,EXTI_TRIGGER_FALLING);
    //  while(startflag==0);//��������
    pit_ms_init(TIM6_PIT, 10);//�жϻص�������isr.c����
    PID_init();

    // �˴���д�û����� ���������ʼ�������
//    if(startflag==1)
//    {
//        gpio_init(A15, GPO, 1, GPIO_PIN_CONFIG);
//        system_delay_ms(50);
//        gpio_init(A15, GPO, 0, GPIO_PIN_CONFIG);

    while (1) {
        // �˴���д��Ҫѭ��ִ�еĴ���
        if (mt9v03x_finish_flag) {
            ImgPreprocess();
            mt9v03x_finish_flag = 0;
        }
        /*��ʾ--����ͼ*/

        tft180_displayimage03x(mt9v03x_image[0], 60, 60);//ԭʼͼ��
        tft180_show_gray_image(60, 60, &BinaryImg_CDM[0][0], IMG_COL, IMG_ROW, 60, 60, 1);

        for (int i = 0; i < 60; i++) {
            for (int j = 0; j < 60; j++) {
                image[i][j] = BinaryImg_CDM[i][j];
            }
        }
        image_scan(image);
        Strait_Detect();
        Cross_Detect();
        cheku_Detect();
        //                 obstacles_Detect();


        //       error = cal_error();

        //     Straight_line_accelerate_judge();
        //    motorPidSetSpeed(1800,1800);//�����������error
        //     Motor_Set(2000,2000);

        if (Cross_Flag == 1) {

            gpio_init(A15, GPO, 1, GPIO_PIN_CONFIG);
            system_delay_ms(40);
            gpio_init(A15, GPO, 0, GPIO_PIN_CONFIG);
            k = (centerline[59] - centerline[top]) / (59 - top);
            for (int i = 58; i > top; i--) {
                centerline[i] = centerline[i + 1] - k;
            }
        }


        for (int i = 59; i > top; i--) {
            for (int j = 0; j < 60; j++) {

                //                                 if (leftline[i] == j)
                //                                 {
                //                                     image[i][j]=5;
                //                                 }
                //                                 else if (rightline[i] == j)
                //                                 {
                //                                     image[i][j]=5;
                //                                 }
                if (centerline[i] == j) {
                    image[i][j] = 5;
                }
            }
        }
        tft180_show_gray_image(0, 60, &image[0][0], IMG_COL, IMG_ROW, 60, 60, 5);
//                  if(garage_flag==1)
//                  {
//                      gpio_init(A15, GPO, 1, GPIO_PIN_CONFIG);
//                      system_delay_ms(50);
//                      gpio_init(A15, GPO, 0, GPIO_PIN_CONFIG);
//                  }
        //   tft180_show_int (60, 0,StraitFlag, 4);
        //      tft180_show_int (90, 0,vari, 4);
        //       tft180_show_int (60, 20,top, 2);

        //       tft180_show_int(60, 20,Left_Up_Find, 2);
        //       tft180_show_int(80, 20,Right_Up_Find, 2);
        //       tft180_show_int(60, 40,Left_Down_Find, 2);
        //       tft180_show_int(80, 40,Right_Down_Find, 2);
        //      tft180_show_int (60, 0,garage_flag, 2);
        //    tft180_show_int (60, 0,obstacles_flag, 2);
//                   tft180_show_int (60, 0,obstacles_flag,3);
//                   tft180_show_int (60, 0,obstacles_flag,2);
//                   tft180_show_int (60, 20,top,2);
//                   tft180_show_int (60, 40,stoppp,2);
        //      tft180_show_int (60, 0,Straight_Flag, 2);
        //      tft180_show_int (60, 0,error, 4);
        //
//
//                   tft180_show_int(60, 20,g_motor_PID_Out1, 4);
//                   tft180_show_int(60, 40,g_motor_PID_Out2, 4);

//                   tft180_show_int(80, 0,Left_Up_Find, 2);
//                   tft180_show_int(100, 0,Right_Up_Find, 2);
//                   tft180_show_int(80, 20,Left_Down_Find, 2);
//                   tft180_show_int(100, 20,Right_Down_Find, 2);
        //       tft180_show_int(60, 0,Left_Lost_Time, 2);
        //       tft180_show_int(80, 0,Right_Lost_Time, 2);
        //       tft180_show_int(80, 40,Both_Lost_Time, 2);
        // �˴���д��Ҫѭ��ִ�еĴ���


    }

}





