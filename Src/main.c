// projet sin + cos HD

int cos_q9( int a );


int main(void)
{
int vtest[10];

// angles negatifs
vtest[0] = cos_q9( -49 );
vtest[1] = cos_q9( -128 );
vtest[2] = cos_q9( -12 );
vtest[3] = cos_q9( -244 ); // 244 = 256-12
vtest[4] = cos_q9( -256 );
vtest[5] = cos_q9( -268 );  // 268 = 256+12
vtest[6] = cos_q9( -512 );
// angles > 2pi
vtest[7] = cos_q9( 512+49 );
vtest[8] = cos_q9( 1024+268 );
vtest[9] = cos_q9( 65536+12 );

while (1) {}
}
