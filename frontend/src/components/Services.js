import React from 'react';

const Services = () => {
  return (
    <section className="services py-5 bg-light">
      <div className="container">
        <h2 className="text-center mb-4">Our Services</h2>
        <div className="row">
          <div className="col-md-4">
            <div className="card">
              <img src="https://via.placeholder.com/400x200" className="card-img-top" alt="Service 1" />
              <div className="card-body">
                <h5 className="card-title">Luxury Rooms</h5>
                <p className="card-text">Enjoy the most comfortable rooms with modern facilities.</p>
              </div>
            </div>
          </div>
          <div className="col-md-4">
            <div className="card">
              <img src="https://via.placeholder.com/400x200" className="card-img-top" alt="Service 2" />
              <div className="card-body">
                <h5 className="card-title">Restaurant</h5>
                <p className="card-text">Indulge in exquisite meals prepared by top chefs.</p>
              </div>
            </div>
          </div>
          <div className="col-md-4">
            <div className="card">
              <img src="https://via.placeholder.com/400x200" className="card-img-top" alt="Service 3" />
              <div className="card-body">
                <h5 className="card-title">Spa & Wellness</h5>
                <p className="card-text">Relax with our premium spa and wellness services.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
};

export default Services;
