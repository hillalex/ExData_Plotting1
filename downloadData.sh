#!/bin/bash
set -ex

wget https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip -O temp.zip
unzip temp.zip
rm temp.zip

mkdir -p data
mv household_power_consumption.txt data/household_power_consumption.txt
