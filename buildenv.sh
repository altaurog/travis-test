#!/bin/bash
export VAR_A=1
export VAR_B=2
export VAR_C=4
env|grep $1|sed s/^$1=//
