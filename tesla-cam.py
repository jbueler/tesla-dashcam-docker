import subprocess

# tesla_dashcam --output ./videos/output/test-2 /app/input --font /usr/share/fonts/noto/NotoSansUI-Regular.ttf  --no-timestamp
subprocess.run([
    "tesla_dashcam",
    "--output",
    "/app/videos/compiled",
    "/app/videos/",
    "--font",
    "/usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf"
])
