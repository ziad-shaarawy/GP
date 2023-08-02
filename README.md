# Energy Efficient Capacitance to Digital Converter using zoom architecture (SAR ADC +TD Sigma Delta)
Graduation project by a team of Cairo university, the project is an energy efficient zoom capacitance to digital converter using Successive Approximation Register (SAR) Analog-to-Digital Converter ADC as the coarse converter and time domain delta sigma as the fine converter.
The project is designed using UMC 180nm Process Design Kit (PDK). However, to comply with the non-disclosure agreement, the PDK is not included in this repository.

To avoid errors when opening the lib.def file, you should ensure that the repository is pulled into the directory with the following path: "/home/usr/TannerEDA/GP/". Additionally, the folder named "UMC_180nm," which contains the PDK, must be located in the directory: "/home/usr/TannerEDA/". If you decide to use a different path for the repository or the PDK, you must make the necessary adjustments to the lib.def file.

The project consists of three primary testbenches:

sar_tb: a testbench for simulating and testing the SAR ADC standalone.

sdm_tb: a testbench for simulating and testing the sogma delta ADC standalone.

zoom_tb: this is the final testbench, where the whole system is simulated and tested.

