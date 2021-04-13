#! /bin/bash

#if false; then
if [ $# -ne 0 ]
then
	echo "Usage: "
	echo "      1. update all the submodules in host-sdk-regression and build"
	echo "      2. boot the palladium or spike"
	exit 1
fi


echo "******host-sdk-regression******"
git checkout master
git pull

cd npu-sdk
pwd=`pwd`

# repo: npu-drv
echo "******npu-drv******"
cd npu-drv
git checkout master
git pull

# repo: us-hal
echo "******us-hal******"
cd ${pwd}/us-hal
git checkout master
git pull
mkdir -p build && cd build && cmake ../
make && make install

# repo: sdk-tests
echo "******sdk-tests******"
cd ${pwd}/sdk-tests
git checkout master
git pull
mkdir -p build && cd build && cmake ../
make
#fi

# boot palladium or spike
cd ${pwd}/npu-drv
lsmod|grep stc > /dev/null
if [ $? -eq 0 ]
then
	sudo rmmod stc
	if [ $? -ne 0 ]
	then
		echo "******rmmod stc failed, exit 1"
		exit 1
	fi
fi
lspci |grep 23e2 > /dev/null
if [ $? -eq 0 ]
then
	echo "******boot palladium 32******"
	./run.sh palladium 32
else
	echo "******boot spike 32******"
	./run.sh spike 32
fi

lsmod|grep stc > /dev/null
if [ $? -ne 0 ]
then
	echo "******boot palladium or spike failed, please check******"
else
	echo "******boot palladium or spike successfully******"
fi
