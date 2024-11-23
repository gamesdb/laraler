<!DOCTYPE html>
<html lang="en">
@include('partials.head')
<body class="bg-white flex flex-col items-center min-h-screen overflow-x-hidden">
    <nav class="bg-white dark:bg-gray-900 fixed w-full p-4 top-0 border-b border-gray-200 dark:border-gray-600">
        <div class="flex justify-center">
            <span class="text-xl font-semibold whitespace-nowrap dark:text-white">{{ $title }}</span>
        </div>
    </nav>
  
    @yield('content')

    @include('partials.footer')
</body>
</html>
