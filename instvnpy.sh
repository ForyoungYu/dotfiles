#!/usr/bin/env bash

python -m pip install --upgrade pip setuptools wheel

# Get and build ta-lib
function install-ta-lib()
{
	pip install Ta-Lib
}
function ta-lib-exists()
{
     ta-lib-config --libs > /dev/null
}
ta-lib-exists || install-ta-lib

python -m pip install numpy

python -m pip install https://vnpy-pip.oss-cn-shanghai.aliyuncs.com/colletion/ibapi-9.75.1-py3-none-any.whl

python -m pip install -r requirements.txt

locale-gen zh_CN.GB18030

python -m pip install .
