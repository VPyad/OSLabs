# Lab1

## Shortcuts
	* cd; cd "Documents/OS Labs/Lab1"
	* bash Lab1Task1.sh

## Task 1
### Commands
	* ls -a - show hidden folders https://askubuntu.com/questions/470837/how-to-show-hidden-folders-in-ubuntu-14-04
	* du -hs .[!.]* - get size of hidden folders https://www.linuxnix.com/linuxunixlist-size-of-sub-and-hidden-directories/
	* find . -not -path '*/\.*' - show hidden folders
	* !! du -sh -- * - list size of not hidden dir https://unix.stackexchange.com/questions/185764/how-do-i-get-the-size-of-a-directory-on-the-command-line
	* https://www.maketecheasier.com/save-output-of-command-to-file-linux/ - save output to file
	* https://www.digitalrebellion.com/blog/posts/getting_to_know_the_terminal_part_1_basic_file_operations
### Solution
du -sh -- * >> folders-size.txt

## Task 2
### Commands
	* cd home: https://askubuntu.com/questions/976800/home-username-desktop-not-recognized-no-such-file-or-directory
	* modify permissions: https://www.linode.com/docs/tools-reference/tools/modify-file-permissions-with-chmod/
	* get user inputs: https://stackoverflow.com/questions/29073210/how-to-check-if-a-group-exists-and-add-if-it-doesnt-in-linux-shell-script
	* about permission: https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/4/html/Step_by_Step_Guide/s1-navigating-ownership.html
	* file ownership (groups): https://www.thegeekstuff.com/2012/06/chown-examples

## Task 3
### Commands
	* https://stackoverflow.com/questions/4749330/how-to-test-if-string-exists-in-file-with-bash
	* https://superuser.com/questions/215896/search-for-a-text-pattern-in-linux
	* https://stackoverflow.com/questions/12516937/grep-but-only-certain-file-extensions
	* grep -r -l --include "*.txt" "search term" > serach_result.txt