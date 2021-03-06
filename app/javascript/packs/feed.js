import React from 'react';
import Post from './post';
import Routes from '../js-routes.js.erb';

export default function Feed({ posts }) {
  return (
    <div>
      <a href={Routes.newPostPath()}>Create Post</a>
      <ul>
        {posts.map(attributes => (
          <li>
            <Post {...attributes} key={attributes.id}/>
          </li>
        ))}
      </ul>
    </div>
  )
}