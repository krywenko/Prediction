# Prediction

Predicted output based on  predicted weather forcast for both solar and wind

all you need to do is edit panelconf  to adjust for your panel conguration

and edit START    - adding in your API keys  and some other  info  and it writes a CSV to /dev/shm  or if you are using  collectd mqtt then it will   collect them  and  if collectd confiured properly will then forward  to various other databases  ie influxdb, mysql, graphite, azure, gnocchi, metricfire  ....ETC 

supports
aeris,climacell,openweather,weatheraapi weatherbit and visualcrossing  weather APIs


you will need to install pysolar , lynx and bc

pip install pysolar

lynx and bc are found in your linux software repository 
