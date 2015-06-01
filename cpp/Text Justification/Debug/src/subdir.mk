################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Solution.cpp \
../src/Text\ Justification1.cpp 

OBJS += \
./src/Solution.o \
./src/Text\ Justification1.o 

CPP_DEPS += \
./src/Solution.d \
./src/Text\ Justification1.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Text\ Justification1.o: ../src/Text\ Justification1.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"src/Text Justification1.d" -MT"src/Text\ Justification1.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


