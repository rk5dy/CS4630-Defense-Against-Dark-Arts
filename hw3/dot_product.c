float dot_product(float *a, float *b, int length) {
	int i;
	float prod = 0;
	for (i = 0; i < length; i+=4) {
		prod += a[i] * b[i] + a[i+1] * b[i+1] + a[i+2] * b[i+2] + a[i+3] * b[i+3];
	}
	return prod;
}
