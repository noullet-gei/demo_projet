// projet sin ultra HD : utilisation d'une table limitee a pi/2

int cos_pi( int a );


int main(void)
{
int vtest[5];

vtest[0] = cos_pi( 49 );
vtest[1] = cos_pi( 128 );
vtest[2] = cos_pi( 12 );
vtest[3] = cos_pi( 244 ); // 244 = 256-12
vtest[4] = cos_pi( 256 );

while (1) {}
}
