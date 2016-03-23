.class public Lcom/google/android/gms/playlog/internal/LogEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/playlog/internal/zzc;


# instance fields
.field public final tag:Ljava/lang/String;

.field public final versionCode:I

.field public final zzaYn:J

.field public final zzaYo:J

.field public final zzaYp:[B

.field public final zzaYq:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/playlog/internal/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/playlog/internal/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/playlog/internal/LogEvent;->CREATOR:Lcom/google/android/gms/playlog/internal/zzc;

    return-void
.end method

.method constructor <init>(IJJLjava/lang/String;[BLandroid/os/Bundle;)V
    .registers 9
    .param p1, "versionCode"    # I
    .param p2, "eventTime"    # J
    .param p4, "eventUptime"    # J
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "sourceExtensionBytes"    # [B
    .param p8, "keyValuePairs"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->versionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->zzaYn:J

    iput-wide p4, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->zzaYo:J

    iput-object p6, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->tag:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->zzaYp:[B

    iput-object p8, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->zzaYq:Landroid/os/Bundle;

    return-void
.end method

.method public varargs constructor <init>(JJLjava/lang/String;[B[Ljava/lang/String;)V
    .registers 9
    .param p1, "eventTime"    # J
    .param p3, "eventUptime"    # J
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "sourceExtensionBytes"    # [B
    .param p7, "extras"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->versionCode:I

    iput-wide p1, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->zzaYn:J

    iput-wide p3, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->zzaYo:J

    iput-object p5, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->tag:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->zzaYp:[B

    invoke-static {p7}, Lcom/google/android/gms/playlog/internal/LogEvent;->zzd([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->zzaYq:Landroid/os/Bundle;

    return-void
.end method

.method private static varargs zzd([Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    return-object v0

    :cond_4
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "extras must have an even number of elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    array-length v1, p0

    div-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v2, :cond_3

    mul-int/lit8 v3, v1, 0x2

    aget-object v3, p0, v3

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "tag="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "eventTime="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->zzaYn:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "eventUptime="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->zzaYo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->zzaYq:Landroid/os/Bundle;

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->zzaYq:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8e

    const-string/jumbo v0, "keyValues="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->zzaYq:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->zzaYq:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    :cond_8e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/playlog/internal/zzc;->zza(Lcom/google/android/gms/playlog/internal/LogEvent;Landroid/os/Parcel;I)V

    return-void
.end method
