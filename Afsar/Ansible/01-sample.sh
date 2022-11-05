- name : Play1
  hosts: all
  tasks:
    - name: Print Hello from tasks of Play1
      ansible.builtin.debug:
          msg: Hai from task1 from Play1
    
    - name: Print Hello from tasks of Play1
      ansible.builtin.debug:
          msg: Hai from task2 from Play1
    
    
    
    
      