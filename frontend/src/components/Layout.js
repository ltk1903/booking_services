import React from 'react';

const Layout = ({ children }) => {
  return (
    <div>
      <header style={{ padding: '10px', background: '#f0f0f0' }}>
        <h1>My App</h1>
      </header>
      <main style={{ padding: '20px' }}>
        {children}
      </main>
      <footer style={{ padding: '10px', background: '#f0f0f0', marginTop: '20px' }}>
        <p>© 2025 My App</p>
      </footer>
    </div>
  );
};

export default Layout;
