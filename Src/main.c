// projet sin HD : interpolation

int cos_q15( int a );


int main(void)
{
int vtest[10];

// on vise la seconde valeur de la table (0x7ffe)
vtest[0] = cos_q15( 1 * (1<<6) );

// on vise entre la premiere et le seconde valeur de la table
// on attend la moyenne de 0x8000 et 0x7ffe soit 0x7fff
vtest[1] = cos_q15( (1<<5) );

// on vise entre la 2nde (0x7ffe) et la 3eme valeur (0x7ff6) de la table
vtest[2] = cos_q15( 3 * (1<<5) );

// 60 degres (pi/3) soit (1<<15)/6 = 5461
vtest[3] = cos_q15( 5461 );

vtest[4] = cos_q15( 512 * (1<<6) );
vtest[5] = cos_q15( -244 * (1<<6) );
vtest[6] = cos_q15( -256 * (1<<6) );
vtest[7] = cos_q15( (1024+49) * (1<<6) );
vtest[8] = cos_q15( (2048+268) * (1<<6) );
vtest[9] = cos_q15( (65536+12) * (1<<6) );

while (1) {}
}
