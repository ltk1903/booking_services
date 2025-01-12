// src/components/ContentPage.js
import React, { useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { fetchContent } from '../action/contentActions';

const ContentPage = () => {
  const dispatch = useDispatch();
  const content = useSelector((state) => state.content.content);

  useEffect(() => {
    dispatch(fetchContent());
  }, [dispatch]);

  return (
    <div className="container">
      <h1>Trang UI - Nội dung từ backend</h1>
      <p>{content}</p>
    </div>
  );
};

export default ContentPage;
