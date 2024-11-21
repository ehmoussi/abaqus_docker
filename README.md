# How to

- Download the Abaqus archive files:
    * 2019.AM_SIM_Abaqus_Extend.AllOS.1-5.tar
    * 2019.AM_SIM_Abaqus_Extend.AllOS.2-5.tar
    * 2019.AM_SIM_Abaqus_Extend.AllOS.3-5.tar
    * 2019.AM_SIM_Abaqus_Extend.AllOS.4-5.tar
    * 2019.AM_SIM_Abaqus_Extend.AllOS.5-5.tar
- Untar the files into
    * AM_SIM_Abaqus_Extend.AllOS
- Add the license server in the install_abaqus.py file at line 61
- Build the image: docker build -t abaqus:2019 .
 