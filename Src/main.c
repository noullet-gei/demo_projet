// projet sin HD

int cos_2pi( int a );


int main(void)
{
int vtest[8];

vtest[0] = cos_2pi( 49 );
vtest[1] = cos_2pi( 128 );
vtest[2] = cos_2pi( 12 );
vtest[3] = cos_2pi( 244 ); // 244 = 256-12
vtest[4] = cos_2pi( 256 );
vtest[5] = cos_2pi( 268 );  // 268 = 256+12
vtest[6] = cos_2pi( 500 );  // 500 = 512-12
vtest[7] = cos_2pi( 512 );

while (1) {}
}
