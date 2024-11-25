Step cv[2];

for (int i; i < cv.size(); i++) {
    cv[i] => dac.chan(i);
}

cv[0].next(0.0);
cv[1].next(0.1);


while( 1 )
{
    // advance time
    1::second => now;
}
