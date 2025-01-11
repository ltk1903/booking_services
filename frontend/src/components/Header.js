import React from 'react';

const Header = () => {
  return (
    <header className="bg-primary text-white text-center py-5">
      <div className="container">
        <h1 className="display-4">Welcome to Montana Hotel</h1>
        <p className="lead">Book Your Stay with Us</p>
        <a href="#book-now" className="btn btn-light btn-lg">Book Now</a>
      </div>
    </header>
  );
};

export default Header;
