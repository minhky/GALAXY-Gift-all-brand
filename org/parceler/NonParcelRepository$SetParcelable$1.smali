.class final Lorg/parceler/NonParcelRepository$SetParcelable$1;
.super Lorg/parceler/converter/HashSetParcelConverter;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/NonParcelRepository$SetParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 504
    invoke-direct {p0}, Lorg/parceler/converter/HashSetParcelConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public itemFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 508
    const-class v0, Lorg/parceler/NonParcelRepository$SetParcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lorg/parceler/Parcels;->unwrap(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public itemToParcel(Ljava/lang/Object;Landroid/os/Parcel;)V
    .registers 5
    .param p1, "input"    # Ljava/lang/Object;
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 513
    invoke-static {p1}, Lorg/parceler/Parcels;->wrap(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 514
    return-void
.end method