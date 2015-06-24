clear;
clc;
disp("--------------Example 26.4---------------")
// display the example
printf("The following shows an actual FTP session for retrieving a list of items in a directory.Lines in the middle show \ncommands sent by the client and the top and bottom lines show data transfer.");
// display the commands and responses
printf("\n\n$ ftp voyager.deanza.tbda.edu\nConnected to voyager.deanza.tbda.edu.\n220(vsFTPd 1.2.1)\n530 Please login with USER and PASS.\nName(voyager.deanza.tbda.edu:forouzan): forouzan\n331 Please specify the password.\nPassword:\n230 Login successful.\nRemote system type is UNIX.\nUsing binary mode to transfer files.\nftp> Is reports\n227 Entering Passive Mode (153,18,17,11,238,169)\n150 Here comes the directory listing.");
printf("\n\ndrwxr-xr-x  2 3027    411        4096Sep24 2002 business\ndrwxr-xr-x  2 3027    411        4096Sep24 2002 personal\ndrwxr-xr-x  2 3027    411        4096Sep24 2002 school");
printf("\n\n226 Directory send OK.\nftp>quit\n221 Goodbye.");
printf("\n\n\nn1. After the control connection is created, the FIP server sends the 220 (service ready) response on the control connection.\n2. The client sends its name.\n3. The server responds with 331 (user name is OK, password is required).\n4. The client sends the password (not shown).\n5. The server responds with 230 (user log-in is OK).\n6. The client sends the list command Os reports) to find the list of files on the directory named report.\n7. Now the server responds with 150 and opens the data connection.\n8. The server then sends the list of the files or directories (as a file) on the data connection.\nWhen the whole list (file) is sent, the server responds with 226 (closing data connection)over the control connection.\n9. The client now has two choices. It can use the QUIT command to request the closing of the control connection, or it can send\nanother command to start another activity (and eventually open another data connection). In our example, the client sends a QUIT command.\n10. After receiving the QUIT command, the server responds with 221 (service closing) and then closes the control connection.")
