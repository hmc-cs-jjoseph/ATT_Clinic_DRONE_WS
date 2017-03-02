/* \file downlink.h
 * \description provides the downlink node
 * \author Jesse Joseph
 */

#include <stdio.h>
#include <cstdlib>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "serialib/serialib.h"


int main(int argc, char **argv);

void sendToBase(const std_msgs::String::ConstPtr& msg);

void cleanup();
