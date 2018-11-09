# Manual
 1. install htop: sudo apt-get install htop
 2. run htop -> to list processes
  * to see PPID:
   * press F2
   * enter columns
   * select PPID column
   * press F10
 3. find any process started by current user
 4. in new terminal window:
  * kill -TSTP [pid] -> to suspend process (https://unix.stackexchange.com/questions/2107/how-to-suspend-and-resume-processes)
  * kill -CONT [pid] -> to resume process
 5. htop -u root OR top -U root OR ps ux --deselect -U root