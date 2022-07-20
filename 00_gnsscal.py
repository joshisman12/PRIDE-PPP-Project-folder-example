import sys
import gnsscal

year = int(sys.argv[1])
doy  = int(sys.argv[2])

gpsweek, days = gnsscal.yrdoy2gpswd(year, doy)
 #print(f'gpsweek={gpsweek}')
 #print(f'gpsdays={days}')
print(f'{gpsweek}{days}')