- name: Setup tomcat8 & Deploy Artifact
  hosts: appssrvgrp
  # gather_facts" no
  vars:
    timestamp: "{{ansible_date_time.date}}_{{ansible_data_time.hour}}_{{ansible_data_time.time}}"
    tom_ur;: https://archive.apache.org//dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tat.gz
  tasks:
    - name: Inatall JDK on Centos 6/7
      yum:
        name: java-1.8.0-open.jdk.x86_64
        state:present
      when: ansible_distribution == 'CentOS'
