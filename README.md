# 🛍️ Flutter Shop App

A clean and responsive Flutter Shopping App that lets users browse products, select sizes, add items to their cart, and manage their cart with ease. Built with `Provider` for state management.

---

## ✨ Features

- 🏠 Home page with product listing (List & Grid view based on screen size)
- 🔍 Search bar & Category filters
- 👟 Product Detail page with size selection
- 🛒 Cart page with remove functionality and confirmation dialogs
- 🛠️ Cart management using Provider (`ChangeNotifier`)
- 📱 Responsive design (List/Grid auto-switch)
- 🎨 Clean & minimal UI design

---

## 📂 Project Structure

lib/
│
├── gloabal_var.dart # Global variables (products data)
│
├── main.dart # App entry point (Provider setup)
│
├── pages/
│ ├── homepage.dart # Home page with navigation
│ ├── cart_page.dart # Cart page
│ └── detail_page.dart # Product detail page
│
├── providers/
│ └── cart_provider.dart # Cart state management using Provider
│
├── widgets/
│ ├── product_list.dart # Product list with search & filters
│ ├── grid_view.dart # Grid view of products
│ ├── list_view.dart # List view of products
│ └── product_card.dart # Product card widget

---

## 🛠️ Tech Stack

| Feature             | Technology         |
|---------------------|--------------------|
| Framework           | Flutter 3.x        |
| Language            | Dart 3.x           |
| State Management    | Provider           |
| UI Widgets          | Stateless & Stateful Widgets |
| Fonts               | Lato               |
| IDE                 | VS Code / Android Studio |

---

## 🚀 Getting Started

### ✅ Prerequisites
- Install [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Ensure mobile emulator or physical device is available

### ✅ Setup

git clone https://github.com/GoldleoM/shopping_app.git
cd shop_app
flutter pub get
flutter run


