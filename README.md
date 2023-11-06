# privateGPT++
A repository that builds on the original privateGPT repository. Includes a functional webapp and a few other working models.

privateGPT++ is built on the repository created and maintained by imartinez. You can find the link to the original repository here: https://github.com/imartinez/privateGPT

## Function
privateGPT++ allows you to ask questions to your documents without needing an internet connection. It is completely secure as your data never leaves the execution environment.
Additionally we have introduced a frontend that allows you to host a simple webapp interface on your local server. 

The entire framework is divided into the frontend and the backend architectures. We shall go into them briefly in the following sections.

## Running the Program

1. Open Visual Studio Code and connect to the server. For this, you need to install a few extensions. a) Remote-SSH b) Remote Explorer. After they are installed, press F1 and you will need to enter the details provided to you.
2. At first you will be prompted to enter your user id which should be in the form: ```ssh <host name>@vs-c2.cs.uit.no```
3. You will be asked to provide your config file.
4. This should add your host to the list of available servers. Steps 1-3 are only a first time requirement.
5. Now press F1, click on "Connect to host" and you should see your host, namely "vs-c2.cs.uit.no". You will be prompted to type your password.
6. After typing your password, a new window shall open. Open a new terminal in the new window(which is basically the giving you access to the server) from the terminal tab above.
7. Enter the following code in the bash terminal: ```docker run --gpus all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 --rm -it -v $HOME/data:/data -p <port number>:<port number>/tcp konramberg/privategptpp:V1.1```<br>
The port number can be anything from 1-65535.
8. This will download the docker image onto your server. This will take some time.
9. Please make sure to remember your port number as you will require it to run the application later.
10. Navigate into the "data" folder. Now you can clone this repository into your folder using ```git clone https://github.com/Oyvindyt/Private2220_assignment2.git```
11. Change directory into "Private2220_assignment2" using ```cd Private2220_assignment2```
17. Run the following commands<br>
   ```mkdir models```<br>
   ```cd models```<br>
   ```wget https://gpt4all.io/models/ggml-gpt4all-j-v1.3-groovy.bin```<br>
   ```wget https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGML/resolve/main/llama-2-7b-chat.ggmlv3.q4_0.bin```<br>
   This downloads the LlamaCpp and GPT4All models into your model directory.
18. Go back to the parent directory by ```cd ..```
19. Run the following command ```mkdir db``
20. Further change directory into "deploy-llm-project" by ```cd deploy-llm-project```
21. Open ```python app.py```. In the last line, change the port number to the one you specified while running the docker container.<br>
```app.run(port=<port number>, host='0.0.0.0', debug=True)```.
22. Before asking a question, upload the combinepdf.pdf
23. You can now ask for the cloud tutor a question or get a multiple choice question relating to a term.



