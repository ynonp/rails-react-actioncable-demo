import React from 'react';
import Post from './post';

export default function Feed({ posts }) {
  return (
    <ul>
      {posts.map(attributes => (
        <Post {...attributes} />
      ))}
    </ul>
  )
}