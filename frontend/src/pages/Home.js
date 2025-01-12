import React from 'react';
import Header from '../components/Header';
import Carousel from '../components/Carousel';
import Services from '../components/Services';
import Footer from '../components/Footer';
import ContentPage from '../components/ContentPage';

const Home = () => {
  return (
    <div>
      <Header />
      <Carousel />
      <Services />
      <div className="container">
        <ContentPage />
      </div>
      <Footer />
    </div>
  );
};

export default Home;
