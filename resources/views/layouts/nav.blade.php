<nav class="mt-2 mx-2">
<div class="accordion accordion-program" id="accordionExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button1 ">
          <a class="flex menu items-center py-2 mx-4 hover:bg-opacity-25 hover:text-dark-600 {{ Request::is('admin/dashboard*') ? '  text-dark-100' :  'text-dark-600' }}" href="{{ route('admin.dashboard.index') }}">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"> 
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M4 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2V6zM14 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V6zM4 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2v-2zM14 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z">
              </path>
            </svg>

            <span class="mx-3">Dashboard</span>
          </a>
        </button>
    </h2>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="heading5">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse5" aria-expanded="false" aria-controls="collapse5">
        <span class="flex">
          <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
            <path stroke-linecap="round" stroke-linejoin="round" d="M10.343 3.94c.09-.542.56-.94 1.11-.94h1.093c.55 0 1.02.398 1.11.94l.149.894c.07.424.384.764.78.93.398.164.855.142 1.205-.108l.737-.527a1.125 1.125 0 011.45.12l.773.774c.39.389.44 1.002.12 1.45l-.527.737c-.25.35-.272.806-.107 1.204.165.397.505.71.93.78l.893.15c.543.09.94.56.94 1.109v1.094c0 .55-.397 1.02-.94 1.11l-.893.149c-.425.07-.765.383-.93.78-.165.398-.143.854.107 1.204l.527.738c.32.447.269 1.06-.12 1.45l-.774.773a1.125 1.125 0 01-1.449.12l-.738-.527c-.35-.25-.806-.272-1.203-.107-.397.165-.71.505-.781.929l-.149.894c-.09.542-.56.94-1.11.94h-1.094c-.55 0-1.019-.398-1.11-.94l-.148-.894c-.071-.424-.384-.764-.781-.93-.398-.164-.854-.142-1.204.108l-.738.527c-.447.32-1.06.269-1.45-.12l-.773-.774a1.125 1.125 0 01-.12-1.45l.527-.737c.25-.35.273-.806.108-1.204-.165-.397-.505-.71-.93-.78l-.894-.15c-.542-.09-.94-.56-.94-1.109v-1.094c0-.55.398-1.02.94-1.11l.894-.149c.424-.07.765-.383.93-.78.165-.398.143-.854-.107-1.204l-.527-.738a1.125 1.125 0 01.12-1.45l.773-.773a1.125 1.125 0 011.45-.12l.737.527c.35.25.807.272 1.204.107.397-.165.71-.505.78-.929l.15-.894z" />
            <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
          </svg>
          <span class="mx-4">Content</span>
        </span>
      </button>
    </h2>
    <div id="collapse5" class="accordion-collapse collapse {{ (request()->is('admin/headline*','admin/profile*','admin/color*','admin/pixel*','admin/ganalytics*' )) ? 'show' : '' }}" aria-labelledby="heading5" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <li class="menu py-2"><a class="menu mt-4 py-2 {{ Request::is('admin/headline*') ? ' bg-opacity-25 ' :  'text-gray-500' }}"href="{{ route('admin.headline.index') }}">Headline</a></li>
      
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="heading5">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse5" aria-expanded="false" aria-controls="collapse5">
        <span class="flex">
          <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
            <path stroke-linecap="round" stroke-linejoin="round" d="M10.343 3.94c.09-.542.56-.94 1.11-.94h1.093c.55 0 1.02.398 1.11.94l.149.894c.07.424.384.764.78.93.398.164.855.142 1.205-.108l.737-.527a1.125 1.125 0 011.45.12l.773.774c.39.389.44 1.002.12 1.45l-.527.737c-.25.35-.272.806-.107 1.204.165.397.505.71.93.78l.893.15c.543.09.94.56.94 1.109v1.094c0 .55-.397 1.02-.94 1.11l-.893.149c-.425.07-.765.383-.93.78-.165.398-.143.854.107 1.204l.527.738c.32.447.269 1.06-.12 1.45l-.774.773a1.125 1.125 0 01-1.449.12l-.738-.527c-.35-.25-.806-.272-1.203-.107-.397.165-.71.505-.781.929l-.149.894c-.09.542-.56.94-1.11.94h-1.094c-.55 0-1.019-.398-1.11-.94l-.148-.894c-.071-.424-.384-.764-.781-.93-.398-.164-.854-.142-1.204.108l-.738.527c-.447.32-1.06.269-1.45-.12l-.773-.774a1.125 1.125 0 01-.12-1.45l.527-.737c.25-.35.273-.806.108-1.204-.165-.397-.505-.71-.93-.78l-.894-.15c-.542-.09-.94-.56-.94-1.109v-1.094c0-.55.398-1.02.94-1.11l.894-.149c.424-.07.765-.383.93-.78.165-.398.143-.854-.107-1.204l-.527-.738a1.125 1.125 0 01.12-1.45l.773-.773a1.125 1.125 0 011.45-.12l.737.527c.35.25.807.272 1.204.107.397-.165.71-.505.78-.929l.15-.894z" />
            <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
          </svg>
          <span class="mx-4">Settings</span>
        </span>
      </button>
    </h2>
    <div id="collapse5" class="accordion-collapse collapse {{ (request()->is('admin/identity*','admin/profile*','admin/color*','admin/pixel*','admin/ganalytics*' )) ? 'show' : '' }}" aria-labelledby="heading5" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <li class="menu py-2"><a class="menu mt-4 py-2 {{ Request::is('admin/identity*') ? ' bg-opacity-25 ' :  'text-gray-500' }}"href="{{ route('admin.identity.index') }}">Identitas</a></li>
        <li class="menu py-2"><a class="menu mt-4 py-2 {{ Request::is('admin/color*') ? ' bg-opacity-25 ' :  'text-gray-500' }}"href="{{ route('admin.color.edit', 1) }}">Warna</a></li>
        <li class="menu py-2"><a class="menu mt-4 py-2 {{ Request::is('admin/pixel*') ? ' bg-opacity-25 ' :  'text-gray-500' }}"href="{{ route('admin.pixel.edit', 1) }}">Facebook Pixel</a></li>
        <li class="menu py-2"><a class="menu mt-4 py-2 {{ Request::is('admin/ganalytics*') ? ' bg-opacity-25 ' :  'text-gray-500' }}"href="{{ route('admin.ganalytics.edit', 1) }}">Google Analytics</a></li>
      
        <li class="menu py-2"><a class="menu mt-4 py-2 {{ Request::is('admin/profile*') ? ' bg-opacity-25 ' :  'text-gray-500' }}"href="{{ route('admin.profile.index') }}">Admin</a></li>
      </div>
    </div>
  </div>
</div>
</nav>

            