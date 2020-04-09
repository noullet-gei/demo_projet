// projet sin HD : angles en milliemes de degres

int cos_deg( int a );


int main(void)
{
int vtest[10];

vtest[0] = cos_deg( 60000 );    // cos(60deg) = 0.5 --> 0x4000 
vtest[1] = cos_deg( 120000 );
vtest[2] = cos_deg( -60000 );
vtest[3] = cos_deg( 45000 );    // cos(45deg) = 0.7071068 --> 0x5A82
vtest[4] = cos_deg( -135000 );
vtest[5] = cos_deg( 90000 );
vtest[6] = cos_deg( 180000 );
vtest[7] = cos_deg( 0 );
vtest[8] = cos_deg( 89990 );        // cos(89.99deg) = sin(0.01deg) ~= pi * (0.01/180) = 1.745e-4 --> 0x06
vtest[9] = cos_deg( 89980 );

while (1) {}
}
