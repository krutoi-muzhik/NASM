#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>
#include <stdlib.h>


struct Time{
	int h;
	int m;
	int md;
};

void TimeScan(struct Time* a);
void TimeFinal(struct Time* a);
void TimePrint(struct Time* a);
int TimeCmp(struct Time* a1, struct Time* a2);


int main() {
	int n;
	scanf("%d", &n);
	int i, j;
	struct Time a[100] = {};
	for (i = 0; i < n; i++) {
		TimeScan(&a[i]);
		TimeFinal(&(a[i]));
		//TimePrint(&(a[i]));
	}
	for (i = 0; i < n - 1; i++) {
		for (j = 0; j < n - i - 1; j++) {
			if (TimeCmp(&a[j], &a[j + 1]) > 0) {
				a[101] = a[j + 1];
				a[j + 1] = a[j];
				a[j] = a[101];
			}
		}
	}
	for (i = 0; i < n; i++) {
		TimePrint(&a[i]);
	}
	return 0;
}

void TimeScan(struct Time* a) {
	char inputek[10];
	scanf("%s", inputek);
	int i;
	for (i = 0; i < 10; i++) {
		if (inputek[i] == ':') inputek[i] = ' ';
	}
	sscanf(inputek, "%d %d", &(a->h), &(a->m));
	scanf("%d", &(a->md));
}

void TimePrint(struct Time* a) {
	if ((a->h < 10) && (a->m < 10)) printf("0%d:0%d\n", a->h, a->m);
	if ((a->h < 10) && (a->m >= 10)) printf("0%d:%d\n", a->h, a->m);
	if ((a->h >= 10) && (a->m < 10)) printf("%d:0%d\n", a->h, a->m);
	if ((a->h >= 10) && (a->m >= 10)) printf("%d:%d\n", a->h, a->m);
}

void TimeFinal(struct Time* a) {
	a->m = a->m + a->md;
	a->md = 0;
	int ost = a->m / 60;
	if (ost != 0) {
		a->h = a->h + ost;
		a->h = a->h % 24;
		a->m = a->m % 60;
	}
}

int TimeCmp(struct Time* a1, struct Time* a2) {
	if ((a1->h) == (a2->h)) {
		return ((a1->m) - (a2->m));
	}
	else return ((a1->h) - (a2->h));
}

