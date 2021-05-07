#!/bin/python
import boto3
import json
from botocore.config import Config
import sys


exec(open('vars').read())
# arguments = len(sys.argv) - 1

# if arguments < 5:
    # print("Error: Number of Arguments missmatch " + sys.argv[0] + " <Tag_Key> <Tag_Value> <Max_attempts> <ec2_region> <ansible_group>")
    # exit()
# else:
    # tag_key = sys.argv[1]
    # tag_value = sys.argv[2]
    # max_attempt = int(sys.argv[3])
    # ec2_region = sys.argv[4]
    # ansible_gp = sys.argv[5]
# print("\nTAG_NAME: " + tag_key + "\nTAG_VALUE: " + tag_value + "\nMAX_ATTEMPTS: " + str(max_attempt) + "\nEC2_REGION: " + ec2_region + "\nANSIBLE_GROUP_NAME: " + ansible_gp + "\n")    
    

def get_hosts(ec2,fv, tk):
    hosts = []
    tk = 'tag:' + tk
    instances = ec2.instances.filter(Filters=[{'Name': tk , 'Values': [fv]},
                                              {'Name': 'instance-state-name', 'Values': ['running']}])
    for instance in instances:
        # print(instance.private_ip_address)
        hosts.append(instance.private_ip_address)
    return hosts

def main():
    if tag_key and tag_value and max_attempt and ec2_region and ansible_gp:
      config = Config(
        retries = dict(
            max_attempts = max_attempt
        )
      )    
      ec2 = boto3.resource('ec2', config=config, region_name=ec2_region)
      ansibe_hosts = get_hosts(ec2,tag_value, tag_key)
      ansible_group = { 'all': {
                            'vars': {
                                   'ansible_python_interpreter': '/usr/bin/python3'
                                  } 
                            },
      
                        ansible_gp: {
                            'hosts': ansibe_hosts
                            }
                      }      
      print(json.dumps(ansible_group))
if __name__ == "__main__":
   main()