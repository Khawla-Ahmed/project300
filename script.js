



//announcement


//?const announcementsElement = document.getElementById('announcements');

// Will Replace the announcements data later



function createAnnouncement(announcement) {
  const announcementElement = document.createElement('div');
  announcementElement.classList.add('announcement');

  const titleElement = document.createElement('h3');
  titleElement.textContent = announcement.title;
  announcementElement.appendChild(titleElement);

  const dateElement = document.createElement('p');
  dateElement.textContent = `Date: ${announcement.date}`;
  announcementElement.appendChild(dateElement);

  const contentElement = document.createElement('p');
  contentElement.textContent = announcement.content;
  announcementElement.appendChild(contentElement);

  return announcementElement;
}

announcements.forEach(announcement => {
  const announcementElement = createAnnouncement(announcement);
  announcementsElement.appendChild(announcementElement);
});
