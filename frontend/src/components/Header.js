import React from 'react';

const Header = () => {
  return (
    <header>
      <div className="logo">
        CST Portal
      </div>
      <nav>
        <ul>
          <li><a href="#">Home</a></li>
          <li><a href="#">Search</a></li>
          <li><a href="#">Add Client</a></li>
          <li><a href="#">Notes</a></li>
          {/* Add more navigation links as needed */}
        </ul>
      </nav>
    </header>
  );
}

export default Header;