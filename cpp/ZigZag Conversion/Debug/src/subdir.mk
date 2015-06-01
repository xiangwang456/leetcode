################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ZigZag\ Conversion.cpp 

OBJS += \
./src/ZigZag\ Conversion.o 

CPP_DEPS += \
./src/ZigZag\ Conversion.d 


# Each subdirectory must supply rules for building sources it contributes
src/ZigZag\ Conversion.o: ../src/ZigZag\ Conversion.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"src/ZigZag Conversion.d" -MT"src/ZigZag\ Conversion.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


