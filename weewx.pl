#!/usr/bin/perl -w

open(SUB, "/usr/bin/mosquitto_sub -t 'weather/loop' |");
my $filename = '/dev/shm/weewx' ;
system("touch $filename");




while ($MQTT = <SUB>) {


open(FH, '>', $filename) or die $!;
print FH $MQTT, " " ;
close(FH);


system("./wind-weewx");


}
