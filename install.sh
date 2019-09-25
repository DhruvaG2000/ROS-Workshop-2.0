cd ~/catkin_ws/src 
catkin_create_pkg sra std_msgs rospy roscpp

cd ~/catkin_ws
catkin_make
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
. ~/catkin_ws/devel/setup.bash

rospack depends1 sra
roscd sra
cat package.xml

cd ~/catkin_ws/src/sra
rmdir -r include msg src 
rm -f CMakelists.txt package.xml
cd ~/ROS_Workshop-2.0
cp msg scripts CMakelists.txt package.xml ~/catkin_ws/src/sra

cd ~/catkin_ws
catkin_make
cd ~/catkin_ws/devel/sra/scripts
sudo chmod +x Publisher.py Publisher_ForwardKinematics.py Publisher_InverseKinematics.py Subscriber.py SubscriberSocketTCP.py

cd ~/ROS_Workshop-2.0/ESP-IDF
cp -r ROS_SRA19 ~/esp/esp-idf/components
mkdir ~/esp/esp-idf/codes
cp -r Server_with_Servo_Control Servo_Set_Zero Servo_Sweep TCP_Server ~/esp/esp-idf/codes
