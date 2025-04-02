# Router's webpage

The following example show how the request is made via the router's webpage. When the user submit a form, one Ajax Request is created to `/goform/formJsonAjaxReq` throw `jbc/abc.js` javascript. 
The name of the action is also included in JSON object. The verified input will be channeled to Jhttp to be interpreted as a read\write configuration or execute a file\script inside the system.
Read and Write is supported by `rw_ini` file optimized to work with `.ini` files. To perform a set param the following command is used: `rw_ini <configfile.ini> (section) (key)`.
In this router the config file has name `jbc_settings.ini`.


```
  +-------------------------------------+  
  |       Router Configuration Page     |  
  |  +-------------------------------+  |
  |  |        [ Form ]               |  |
  |  |  [Input Fields for Settings]  |  | 
  |  |        [ Submit Button ]      |  |    
  |  +-------------------------------+  |      
  +-------------------------------------+
                     | (Submits Form Data)
                     V
   +-----------------------------------+
   |      Javascript jbc/abc.js        |
   |                                   |
   |   - Handles AJAX requests         |
   |   - Function: /formJsonAjaxReq    |
   +-----------------------------------+
                     | (AJAX Request)
                     V
   +-----------------------------------+
   |     Jhttpd JBC Custom Service     |
   |                                   |
   |   - Read & Write Config. File     |
   |         jbc_settings.ini          |
   |   - Build JSON response           |
   |   - Execute Scripts & Files       |
   +-----------------------------------+
```


...
