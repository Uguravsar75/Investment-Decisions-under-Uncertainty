.PHONY: setup run verify clean

PYTHON ?= python3

setup:
	$(PYTHON) -m pip install --upgrade pip
	$(PYTHON) -m pip install -r requirements.txt

run:
	$(PYTHON) Document/analiz_python.py

verify: run
	@test -f Document/veri_analiz.xlsx && echo "✓ veri_analiz.xlsx verified"
	@test -f Document/grafikler/grafik1_enflasyon_faiz.png && echo "✓ grafik1_enflasyon_faiz.png verified"
	@test -f Document/grafikler/grafik2_reel_getiri.png && echo "✓ grafik2_reel_getiri.png verified"
	@test -f Document/grafikler/grafik3_normalize_performans.png && echo "✓ grafik3_normalize_performans.png verified"
	@test -f Document/grafikler/grafik4_korelasyon.png && echo "✓ grafik4_korelasyon.png verified"
	@test -f Document/grafikler/grafik5_senaryo_profil.png && echo "✓ grafik5_senaryo_profil.png verified"
	@test -f Document/grafikler/grafik6_portfoy.png && echo "✓ grafik6_portfoy.png verified"

clean:
	rm -rf __pycache__ Document/__pycache__ .pytest_cache
