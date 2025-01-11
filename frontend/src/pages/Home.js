import React from 'react';
import Header from '../components/Header';
import Carousel from '../components/Carousel';
import Services from '../components/Services';
import Footer from '../components/Footer';

const Home = () => {
  return (
    <div>
      <Header />
      <Carousel />
      <Services />
      <Footer />
    </div>
  );
};

export default Home;
