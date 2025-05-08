- name: Fetch the list of top CPU consumers on the host
  hosts: all
  tasks:
    - name: Run the top command and capture the output
      shell: top
      register: top_output

    - name: Print the output of the top command
      debug:
        var: top_output.stdout_lines
```