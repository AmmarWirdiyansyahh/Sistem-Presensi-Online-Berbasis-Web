<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | SMP Semparuk</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-b from-blue-400 via-blue-200 to-white min-h-screen flex items-center justify-center font-[Inter]">

    <div class="bg-white p-8 rounded-xl shadow-lg w-full max-w-sm border border-blue-200">
        <h2 class="text-center text-lg font-bold mb-1">SISTEM PRESENSI ONLINE</h2>
        <h3 class="text-center text-md font-semibold mb-6">SEKOLAH MENENGAH PERTAMA SEMPARUK</h3>

        @if ($errors->any())
            <div class="bg-red-100 text-red-700 p-2 rounded mb-3 text-sm">
                {{ $errors->first() }}
            </div>
        @endif

        <form method="POST" action="{{ route('login') }}">
            @csrf

            <div class="mb-4">
                <label class="block mb-1 text-sm">Email</label>
                <input type="email" name="email" value="{{ old('email') }}" required autofocus placeholder="name@email.com"
                       class="w-full px-3 py-2 border rounded-md text-sm focus:outline-none focus:ring-2 focus:ring-blue-400">
            </div>

            <div class="mb-4">
                <label class="block mb-1 text-sm">Password</label>
                <input type="password" name="password" required
                       class="w-full px-3 py-2 border rounded-md text-sm focus:outline-none focus:ring-2 focus:ring-blue-400">
            </div>

            <button type="submit"
                    class="w-full bg-blue-400 text-white py-2 rounded-md hover:bg-blue-500 transition">
                Sign In
            </button>

            <div class="text-right mt-2 text-sm">
                <a href="#" class="text-blue-500 hover:underline">Forgot password?</a>
            </div>
        </form>
    </div>

</body>
</html>
