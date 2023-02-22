import aiohttp
import asyncio

async def download_file(session, url, headers, dest):
    async with session.get(url, headers=headers) as resp:
        with open(dest, 'wb') as f:
            while True:
                chunk = await resp.content.read(1024)
                if not chunk:
                    break
                f.write(chunk)

async def main():
    urls = [
        'https://nexus.example.com/repository/maven-releases/com/example/app/1.0.0/app-1.0.0.jar',
        'https://nexus.example.com/repository/maven-releases/com/example/lib/1.0.0/lib-1.0.0.jar',
        'https://nexus.example.com/repository/maven-releases/com/example/config/1.0.0/config-1.0.0.json'
    ]
    headers = {
        'Authorization': 'Basic YWRtaW46cGFzc3dvcmQ='  # replace with your own credentials
    }
    tasks = []
    async with aiohttp.ClientSession() as session:
        for url in urls:
            filename = url.split('/')[-1]
            task = asyncio.ensure_future(download_file(session, url, headers, filename))
            tasks.append(task)
        await asyncio.gather(*tasks)

if __name__ == '__main__':
    loop = asyncio.get_event_loop()
    loop.run_until_complete(main())
