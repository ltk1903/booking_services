export const fetchContent = () => async (dispatch) => {
    try {
      const response = await fetch('http://localhost:3000');
      const data = await response.json();
      dispatch({
        type: 'SET_CONTENT',
        payload: data.content,
      });
    } catch (error) {
      console.error('Error fetching content:', error);
    }
  };